## Animation Shorthand

```css
.fade {
  animation-name: fadeOut;
  animation-duration: 2s;
  animation-timing-function: ease-in-out;
  animation-iteration-count: 2;
  animation-direction: alternate;
  animation-delay: 5s;
  animation-fill-mode: forwards; }

/* Can be rewritten like this */

.fade {
  animation: fadeOut 2s ease-in-out 2 alternate 5s forwards; }
```

List the property values in the order: 

- `name`
- `duration`
- `timing function` ***(optional)***
- `count` ***(optional)*** [2]
- `direction` ***(optional)*** [alternate]
- `delay` ***(optional)***
- `fill-mode` ***(optional)***

Only the name and duration are actually required. The other values are optional.

> To have an animation run a number of times but end up back at the beginning state, use an even number of iterations and set the `animation-direction` property to `alternate`.

## Pausing an Animation

**`animation-play-state—to`** accepts only one of two keywords: `running` or `paused`.

```css
.fade {
  animation: fadeOut 2s ease-in-out 2 alternate 5s forwards,
             glow 5s; }

.fade:hover {
  animation-play-state: paused; }
```