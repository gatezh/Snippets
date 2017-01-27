## Rotate

```css
/* rotate the element 10 degrees clockwise */
.element {
	transform: rotate(10deg); }
```

## Scale

```css
/* twice as big */
.element {
	transform: scale(2); }


/* half as wide but twice as tall */
.element {
	transform: scale(.5, 2); }


/* horizontal */
.element {
	transform: scaleX(3.5); }


/* flip upside down and left to right */
.element {
	transform: scale(-1); }


/* flip only horizontally */
.element {
	transform: scale(-1, 1); }
```


## Translate

```css
.element {
	transform: translate(1px, 2px); }


/* just up */
.element {
	transform: translateY(-.5em); }
```


## Skew

```css
/* slant all the vertical lines so they lean to the left 45deg */
.element {
	transform: skew(45deg, 0); }


/* skew on both axes */
.element {
	transform: skew(25deg, 10deg); }


/* skew for X axe only */
.element {
	transform: skewX(10deg); }
```


## Origin

```css
/* rotate around it's top left corner */
.element {
	transform-origin: left top;
	/* or
	transform-origin: 0 0;
	or
	transform-origin: 0% 0%; */ }


/* rotate around it's bottom right corner */
.element {
	transform-origin: right bottom;
	/* or
	transform-origin: 100% 100%; */ }
```