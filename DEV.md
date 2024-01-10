# Development

To make changes to CSS, edit:

* `tailwind.config.js`
* `assets/css/main.css`

Then run `npm run build`.

Output: `assets/css/compiled/main.css`

To deploy to theme, copy the following to respective locations:

* `assets/css/main.css`
* `assets/css/compiled/main.css`

## Notes about CSS changes

### Choose light/dark/auto theme

In `tailwind.confg.js`:

```js
  darkMode: "class",
```

is automatic light/dark selection by the browser.

```js
  darkMode: "media",
```

is manual selection by the theme's configuration.

### Change background color everywhere

In `assets/css/main.css`:

```js
html {
  background-color: #B9AFA0;
}
```
