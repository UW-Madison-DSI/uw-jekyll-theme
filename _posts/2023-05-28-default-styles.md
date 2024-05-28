---
layout: post
title: a post with default UW template styles
date: 2024-05-28 13:53:00-0400
description: an example of defaut UW template styles
categories: sample-posts, formatting
giscus_comments: true
related_posts: true
---
This post shows show the default styles from the UW template. Based on the [UW Template](https://brand.wisc.edu/uwmadison_templates/).

<h1>Base typographic styles</h1>

<h2 class="uw-mini-bar">Headers</h2>

<h1>This is an h1 header</h1>
<h2>This is an h2 header</h2>
<h3>This is an h3 header</h3>
<h4>This is an h4 header</h4>
<h5>This is an h5 header</h5>
<h6>This is an h6 header</h6>

<p class="uw-pad-t-l">

              The 
    <i>uw-no-case-transform</i>
     CSS class can be used to remove the all-caps style from headers:
            
</p>

<h2 class="uw-mini-bar">Paragraphs</h2>

<p>
          Typically, you would limit your line length using a grid or layout system of some sort.
        </p>
<p>

              This paragraph shows 
    <strong>strong</strong>
     or 
    <b>bolded</b>
    , 
    <em>emphasized</em>
     or 
    <i>italicized</i>
     and 
    <a href="1">linked text</a>
    .
            
</p>

<h2 class="uw-mini-bar">Lists</h2>

<h3>Unordered lists:</h3>
<ul>
    <li>Intelligent</li>
    <li>Spirited</li>
    <li>Engaging</li>
    <li>Beautiful</li>
</ul>

<h3>Ordered lists:</h3>
<ol>
    <li>Friendly</li>
    <li>Midwestern</li>
    <li>Comprehensive</li>
    <li>Big</li>
    <li>Challenging</li>
    <li>Progressive</li>
</ol>

<h3>Lists with tight vertical spacing:</h3>
<ul class="uw-list-tight">
    <li>Intelligent</li>
    <li>Spirited</li>
    <li>Engaging</li>
    <li>Beautiful</li>
</ul>

<h2 class="uw-mini-bar">Blockquote</h2>

<blockquote>

              “Whatever may be the limitations which trammel inquiry elsewhere, we believe that the great state University of Wisconsin should ever encourage that continual and fearless sifting and winnowing by which alone the truth can be found.”
              
    <cite>The Board of Regents, 1894</cite>
</blockquote>

<h2 class="uw-mini-bar">Blockquote, alternate style</h2>

<blockquote class="uw-stylized-quote">

              “Whatever may be the limitations which trammel inquiry elsewhere, we believe that the great state University of Wisconsin should ever encourage that continual and fearless sifting and winnowing by which alone the truth can be found.”
              
    <cite>The Board of Regents, 1894</cite>
</blockquote>

<h2 class="uw-mini-bar">Buttons</h2>

<p>
    <button class="uw-button">Save</button>
    <button class="uw-button">Cancel</button>
</p>
<p>
    <button class="uw-button uw-button-red">Save</button>
    <button class="uw-button uw-button-red">Cancel</button>
</p>
<p>
    <button class="uw-button uw-button-reverse">Save</button>
    <button class="uw-button uw-button-reverse">Cancel</button>
</p>
<p>
    <button class="uw-button uw-button-red-reverse">Save</button>
    <button class="uw-button uw-button-red-reverse">Cancel</button>
</p>

<h2 class="uw-mini-bar">Tables</h2>
<table>
    <thead>
        <tr>
            <th scope="col">Employee</th>
            <th scope="col">Salary</th>
            <th scope="col">Notes</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row">
                <a href="http://example.org/">Mary&nbsp;Doe</a>
            </th>
            <td>$1</td>
            <td>Because that’s all Steve Jobs needed for a salary.</td>
        </tr>
        <tr>
            <th scope="row">
                <a href="http://example.org/">John&nbsp;Doe</a>
            </th>
            <td>$100K</td>
            <td>For all the blogging he&nbsp;does.</td>
        </tr>
        <tr>
            <th scope="row">
                <a href="http://example.org/">Jane&nbsp;Bloggs</a>
            </th>
            <td>$100M</td>
            <td>Pictures are worth a thousand words, right?</td>
        </tr>
        <tr>
            <th scope="row">
                <a href="http://example.org/">Fred Bloggs</a>
            </th>
            <td>$100B</td>
            <td>
                <p>Everyone wants to be friends with Fred.</p>
                <p>Another paragraph Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia, officia. Adipisci minus, dolore, sunt nemo dolores magnam dolorem placeat animi nostrum repudiandae, officiis a porro non architecto, eius quia iure.</p>
            </td>
        </tr>
    </tbody>
</table>

<h2 class="uw-mini-bar">Forms</h2>

<form action="./">
    <fieldset>
        <legend>A fieldset</legend>
        <div class="uw-input-row">
            <label for="first-name">First name:</label>
            <input type="text" id="first-name">
        </div>
        <div class="uw-input-row">
            <label for="last-name">Last name:</label>
            <input type="text" id="last-name">
        </div>
    </fieldset>

    <fieldset>
        <legend>Radio buttons</legend>
        <label>
            <input name="radio" type="radio" value="1" checked>
             Option one
        </label>
        <label>
            <input name="radio" type="radio" value="2">
             Option two
        </label>
        <label>
            <input name="radio" type="radio" value="3">
             Option three
        </label>
    </fieldset>

    <fieldset>
        <legend>Checkboxes</legend>
        <label>
            <input name="checkbox1" type="checkbox" value="1" checked>
             Option one
        </label>
        <label>
            <input name="checkbox2" type="checkbox" value="2">
             Option two
        </label>
        <label>
            <input name="checkbox3" type="checkbox" value="3">
             Option three
        </label>
    </fieldset>

    <fieldset>
        <legend>Select</legend>
        <label for="select">Select:</label>
        <select name="select" id="select">
            <option value="1">Option 1</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
            <option value="4">Option 4</option>
            <option value="5">Option 5</option>
        </select>
    </fieldset>

    <fieldset>
        <legend>File upload</legend>
        <label for="avatar">Choose a profile picture:</label>
        <input type="file" id="avatar" name="avatar" accept="image/png, image/jpeg">
    </fieldset>

    <input type="submit" value="Submit">
</form>