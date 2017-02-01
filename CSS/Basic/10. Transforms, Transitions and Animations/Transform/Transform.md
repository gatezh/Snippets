## Rotate

You give it a degree value from 0 to 360, and the browser rotates that element the specified number of degrees around a circle. Use *negative numbers* to rotate the element counter-clockwise.


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
`translate` function simply moves an element from its current position a set amount left or right and up or down.

```css
.element {
	transform: translate(1px, 2px); }


/* just up */
.element {
	transform: translateY(-.5em); }
```


## Skew

The first value is a degree value from `0deg` to `360deg`, proceeding in a counter-clockwise direction from the top of the element.  
The second value is also a degree value from `0deg` to `360deg`. But this one proceeds in a clockwise position from the right of the element. 

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

Normally, when you apply a transformation to an element, the web browser uses the center of the element as the transformation point.

> The `transform-origin` property has no effect on elements that are only moved using the `translate` function. 

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