#!/bin/sh

set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
output_dir=$(mktemp -d)
home_profile_output_dir=$(mktemp -d)
trap 'rm -rf "$output_dir" "$home_profile_output_dir"' EXIT HUP INT TERM

hugo \
  --source "$project_dir/exampleSite" \
  --themesDir ../.. \
  --baseURL https://example.org/lynx/ \
  --destination "$output_dir" \
  --buildDrafts \
  --minify \
  --cleanDestinationDir

assert_file() {
  if [ ! -f "$output_dir/$1" ]; then
    echo "Expected generated file: $1" >&2
    exit 1
  fi
}

assert_contains() {
  if ! grep -Fq "$2" "$output_dir/$1"; then
    echo "Expected $1 to contain: $2" >&2
    exit 1
  fi
}

assert_not_contains() {
  if grep -Fq "$2" "$output_dir/$1"; then
    echo "Expected $1 not to contain: $2" >&2
    exit 1
  fi
}

assert_count() {
  count=$(grep -Fo "$2" "$output_dir/$1" | wc -l | tr -d ' ')
  if [ "$count" -ne "$3" ]; then
    echo "Expected $1 to contain '$2' $3 time(s), found $count" >&2
    exit 1
  fi
}

for page in index.html work/index.html music/index.html band/index.html edge-cases/index.html; do
  assert_file "$page"
done

# Legacy homepage remains config-driven.
assert_contains index.html 'data-theme=auto'
assert_contains index.html 'Lynx'
assert_contains index.html 'href=https://github.com/jpanther/lynx'
assert_contains index.html 'src=/lynx/author_'

# Each branch bundle renders independent profile data and metadata.
assert_contains work/index.html 'data-theme=dark'
assert_contains work/index.html 'Alex Morgan'
assert_contains work/index.html 'href=https://example.org/lynx/work/'
assert_contains work/index.html 'src=/lynx/work/profile_'
assert_contains work/index.html 'aria-label=GitHub'
assert_contains work/index.html 'target=_self'
assert_not_contains work/index.html 'Lynx Sessions'
assert_count work/index.html 'name=description' 1
assert_count work/index.html 'name=robots' 1

assert_contains music/index.html 'data-theme=light'
assert_contains music/index.html 'Lynx Sessions'
assert_contains music/index.html 'src=/lynx/android-chrome-512x512.png'
assert_contains music/index.html 'https://example.org/lynx/android-chrome-512x512.png'
assert_not_contains music/index.html 'Alex Morgan'

assert_contains band/index.html 'data-theme=auto'
assert_contains band/index.html 'The Lynx Band'
assert_not_contains band/index.html 'social-link'
assert_not_contains band/index.html 'sm:px-24'

# Invalid themes, malformed links and unknown icons degrade safely.
assert_contains edge-cases/index.html 'data-theme=auto'
assert_contains edge-cases/index.html 'aria-label="Custom network"'
assert_contains edge-cases/index.html 'data-icon="link"'
assert_not_contains edge-cases/index.html 'Missing URL'

# Page front matter overrides legacy homepage fields, including empty lists.
hugo \
  --source "$project_dir/exampleSite" \
  --themesDir ../.. \
  --contentDir "$project_dir/testdata/home-profile" \
  --baseURL https://example.org/lynx/ \
  --destination "$home_profile_output_dir" \
  --minify \
  --cleanDestinationDir >/dev/null

if ! grep -Fq 'Front Matter Profile' "$home_profile_output_dir/index.html"; then
  echo "Expected page-level profile data on the homepage" >&2
  exit 1
fi
if grep -Fq 'View the readme' "$home_profile_output_dir/index.html"; then
  echo "Expected page-level links: [] to suppress configured links" >&2
  exit 1
fi
if ! grep -Fq 'data-theme=light' "$home_profile_output_dir/index.html"; then
  echo "Expected page-level homepage theme" >&2
  exit 1
fi

echo "Example site regression checks passed."
