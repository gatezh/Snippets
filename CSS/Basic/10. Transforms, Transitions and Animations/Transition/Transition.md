## Transition Shorthand

`transition` property combines:

1. `transition-property`
2. `transition-duration`
3. `transition-timing-function` **(optional)**
4. `transition-delay` **(optional)**
 
```css
/* animate all CSS properties */
transition: all 1s ease-in .5s; 

/* animate background-color */
transition: background-color 1s;

/* animate multiple CSS properties, but not all */
transition: color 1s,
            background-color 1s,
            border-color .5s 1s;
```

