## Forms

```html
<form class="subform"  method="post" action="submit.html">
	<p>
		<label for="name">What is your name?</label>
		<input type="text" name="name" id="name">
	</p>
	<p>
		<label for="email">What is your email address?</label>
		<input type="text" name="email" id="email">
	</p>
	<p>Rate your skills
		<label>
			<input name="skill" type="radio" value="novice">
			Novice</label>
		<label>
			<input name="skill" type="radio" value="advanced">
			Advanced</label>
	</p>
	<p>
		<label for="refer">Where did you hear about us? </label>
		<select name="refer" id="refer">
			<option value="null">Select One</option>
			<option value="1">Friend</option>
			<option value="2">Internet</option>
		</select>
	</p>
	<p>
		<label for="comments">Any additional comments? </label>
		<textarea name="comments" cols="35" rows="4" id="comments"></textarea>
	</p>
	<p>
		<input type="submit" value="Subscribe">
	</p>
</form>
```

### HTML Form Elements

1. `<fieldset>` – groups related form questions 
2. `<legend>` – follows the HTML for the `<fieldset>` and provides a label for the group of fields
3. Text fields:
	- `<input type="text">`
	- `<input type="password">`
	- `<textarea>`

4. Buttons `<input type=“submit”>`
5. Drop-down menus created by the `<select>` tag


### Form pseudo-classes
`:focus` pseudo-class lets you create a selector that changes the way a text field looks when a visitor clicks or tabs inside it (this is called giving the field focus).

`:checked` pseudo-class works with radio buttons and checkboxes.

You can only change the state of a form element (from disabled to enabled, for example) using JavaScript, so you’ll need to learn that to really take advantage of the `:enabled` or `:disabled` pseudo-classes.


### Form Validation without JavaScript[^form validation]

[^form validation]: [HTML5 Doctor. CSS3 Pseudo-Classes and HTML5 Forms](http://html5doctor.com/css3-pseudo-classes-and-html5-forms/)

#### Required and Optional Elements

```html
<input type="text" required id="foo">
<label for="foo">Foo</label>
```

You may want to put an asterisk after the text of the label:

```css
input:required + label::after { content: "*"; }
```

A pseudo-class `:optional` affects any form element that doesn’t have a required attribute. For example, you may want to make those have a lighter border:

```css
input:optional { border-color: silver; }
```

#### Valid and Invalid Elements

Use pattern matching, such as email address validation:

```html
<input type="email">
```

Style valid or invalid form elements using pseudo-classes `:valid` and `:invalid`. Maybe you want add a symbol depending on the validation status:

```css
input:invalid + label::after { content: ' ⨉'; }
input:valid + label::after { content: ' ✓'; }
```

> Note that these will take effect as soon as the page loads, so you’ll probably want to use JavaScript to apply them only after submission, perhaps by adding a class to the form with JavaScript:

>```js
document.forms[].addEventListener('submit', function(e) {
  e.currentTarget.classList.add('submitted');
  // Your fallback form validation function
});
```

The exact script you use will vary, but however you do it, you can use that class to style the form elements, like so:

```css
.submitted input:invalid + label::after { content: ' ⨉'; }
```


#### Number Ranges

Input type `number` allow a range of values using the `min` and `max` attributes:

```html
<input type="number" max="10" min="1">
```

Although form controls will usually prevent the user from entering a value outside of this range, there may be occasions (such as when JavaScript is used to provide values) where the value provided to the input does exceed the range:

```html
<input type="number" max="10" min="1" value="11">
```

When this happens, you can use the `:out-of-range` pseudo-class for styling:

```css
input[type='number']:out-of-range { border-color: red; }
```

And there’s a counterpart – `:in-range`:

```html
input[type='number']:in-range { border-color: green; }
```


#### Reading and Writing

```html
<!-- a non-editable pre-filled form field -->
<textarea readonly>Lorem ipsum</textarea>
```

Style it with `:read-only` pseudo-class combined with the `user-select`

```css
textarea:read-only { user-select: none; }
```

There is of course a `:read-write` pseudo-class for elements which don’t have the attribute applied:

```css
textarea:read-write { user-select: text; }
```