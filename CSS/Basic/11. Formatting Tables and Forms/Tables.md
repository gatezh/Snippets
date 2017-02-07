```html
<table class="inventory" width="100%">

<caption align="bottom">
    Table 1: CosmoFarmer.com's Indoor Mower Roundup
</caption>

<colgroup>
    <col id="product" />
    <col id="price" />
    <col id="rating" />
 </colgroup>
 
 <thead>
     <tr>
         <th scope="col">Product</th>
         <th scope="col">Price</th>
         <th scope="col">Rating</th>
     </tr>
 </thead>

 <tbody>
     <tr>
         <td>Chinook Push-o-matic Indoor Mower</td>
         <td>$247.00</td>
         <td>Mechanical</td>
     </tr>
     <tr>
         <td>Sampson Deluxe Apartment Mower</td>
         <td>$370.00</td>
         <td>Mechanical</td>
     </tr>
   </tbody>
</table>
```

## Creating Borders

1. Applying a border to a style that formats the `<table>` tag outlines just the table, not any of the individual cells.
2. Applying borders to cells (`td { border: 1px solid black; }`) leaves you with a visual gap between cells

```css
/* to remove space between cells */
/* but it leaves double borders */
table {
  border-spacing: 0; }

/* to eliminate double borders */
/* if used border-spacing has no effect */
table { 
	border-collapse: collapse; }

/* round corners */
/* no effect if border-collapse property set to collapse */
td {
  border: 1px solid black;
  border-radius: 5px; }
```


## Styling Rows and Columns

### Rows

```css
/* add background to odd/even rows */
tr:nth-of-type(odd) { background-color: red; }
tr:nth-of-type(even) { background-color: blue; }
```

### Columns

HTML provides the `<colgroup>` and `<col>` tags to indicate groups of columns and individual columns, respectively.

Only two sets of properties work on these tags: width and the background properties (`background-color`, `background-image`, and so on).

```css
#price, #rating {
    width: 15%; }
```