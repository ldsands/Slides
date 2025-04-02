# MySlides

- [MySlides](#myslides)
    - [Notes on Updates](#notes-on-updates)
    - [Useful Code Snippets for Reveal.js](#useful-code-snippets-for-revealjs)

## Notes on Updates

- 2024-08-26 updated Reveal.js to version [4725350](https://github.com/hakimel/reveal.js/tree/472535065c7525abf0cc9df51c66f19fd2d2204f) which is from 2024-05-15

## Useful Code Snippets for Reveal.js

- Use image as background (fills up as much space as possible)

```html
<section
    data-background-image="../pics/XXXXX/XXXXX/XXXXX.avif"
    data-background-size="contain">
</section>
```

- if you need to do something to an image (e.g. make it a clickable link) you can use the code below
    - There is still an issue with the top margin or padding pushing the whole image down a bit when in fullscreen (setting the height to 96vh along with setting the margin to 0 seems to fix this for the most part)

```html
<section>
    <a href="https://www.vox.com/future-perfect/22311356/china-uyghur-birthrate-sterilization-genocide"><img src="../pics/SOC1030Fa2024/SOC1030Fa24-C02-W01-24-08-29-Th/Uyghurs.avif" style="margin:0; object-position: center; object-fit: contain; height: 96vh; width: 100vw"></a>
    <a href="https://www.vox.com/future-perfect/22311356/china-uyghur-birthrate-sterilization-genocide">
        <img src="../pics/SOC1030Fa2024/SOC1030Fa24-C02-W01-24-08-29-Th/Uyghurs.avif" style="margin:0; object-position: center; object-fit: contain; height: 96vh; width: 100vw">
    </a>
</section>
```

- For some easier image code so you don't have to continually repeat the week directory for example you can do the following:

```html
# Put the script code below in the head section
    <script>
        let parent_dir = "../pics/SOC1030Fa2024/";
        let week_dir = "SOC1030Fa24-C02-W01-24-08-29-Th/";
        let pic_dir = parent_dir + week_dir
    </script>
# then you can use the following for the image
<section>
    <a href="https://www.vox.com/future-perfect/22311356/china-uyghur-birthrate-sterilization-genocide">
        <img id="Uyghurs" src="" style="margin:0; object-position: center; object-fit: contain; height: 76vh; width: 100vw">
    </a>
    <script>document.getElementById("Uyghurs").src = pic_dir + "Uyghurs.avif";</script>
</section>
```

- For putting an image into markdown only using markdown syntax

```html
<section data-markdown>
    ![Uyghurs](../pics/SOC1030Fa2024/SOC1030Fa24-C02-W01-24-08-29-Th/Uyghurs.avif)
</section>
# for using with a link
<section data-markdown>
    [![Uyghurs](../pics/SOC1030Fa2024/SOC1030Fa24-C02-W01-24-08-29-Th/Uyghurs.avif)](https://www.vox.com/future-perfect/22311356/china-uyghur-birthrate-sterilization-genocide)
</section>

```

- For putting a YouTube video into a slide
    - if you want to set a start and end time add this to the url `?start=0&end=144` must be in seconds

```html
<section>
    <iframe width="900" height="650" src="https://www.youtube.com/embed/5tc2X8xLGPI" frameborder="0" allowfullscreen></iframe>
</section>
# for the start and end time
<section>
    <iframe width="900" height="650" src="https://www.youtube.com/embed/5tc2X8xLGPI?start=0&end=144" frameborder="0" allowfullscreen></iframe>
</section>
```

- Make items stack on top of each other, they fade in then they fade out with each advance (can't get to work with stretching)

```html
<span class="r-stack">
    <span class="fragment fade-in"><p class="fade-out" data-fragment-index="0">Test</p></span>
    <span img class="r-stretch"><span class="fragment fade-in"><img class="fragment fade-out" src="https://picsum.photos/450/300"/></span></span>
    <span img class="r-stretch"><span class="fragment fade-in"><img class="fragment fade-out" src="https://picsum.photos/300/450"/></span></span>
    <span img class="r-stretch"><span class="fragment fade-in"><img class="fragment fade-out" src="https://picsum.photos/400/400"/></span></span>
</span>
```

- make images appear next to each other

```html
<section>
    <a href="https://www.britannica.com/biography/Auguste-Comte">
        <img src="../pics/SOC1030Fa2024/SOC1030Fa24-C04-W02-24-09-05-Th/Auguste-Comte-Tony-Toullion-Bibliotheque-Nationale-Paris.webp" height="400">
        <!-- style="margin:0; object-position: center; object-fit: contain; height: 96vh; width: 100vw" -->
    </a>
    <a href="https://www.thefamouspeople.com/profiles/mile-durkheim-5451.php">
        <img src="../pics/SOC1030Fa2024/SOC1030Fa24-C04-W02-24-09-05-Th/emile-durkheim-7.webp" height="400">
    </a>
    <a href="https://en.wikipedia.org/wiki/Talcott_Parsons#/media/File:Talcott_Parsons_(photo).jpg">
        <img src="../pics/SOC1030Fa2024/SOC1030Fa24-C04-W02-24-09-05-Th/Talcott_Parsons_(photo).jpg" height="400">
    </a>
    <p></p>
    <a href="https://en.wikipedia.org/wiki/Human_body#/media/File:Internal_Organs_of_the_Human_Body_from_The_Household_Physician,_1905_(6404030777).jpg">
        <img src="../pics/SOC1030Fa2024/SOC1030Fa24-C04-W02-24-09-05-Th/518px-Internal_Organs_of_the_Human_Body_from_The_Household_Physician,_1905_(6404030777).avif" width="400">
    </a>
</section>
```

- Citations in ASA Style

```html
<!-- Citations -->
<section>
    <h2>References</h2>
    <div align="left" class="hangingIndent">
        <p>CitationHere</p>
        <p>CitationHere</p>
        <p>CitationHere</p>
    </div>
</section>
<!-- Citations -->
```

- a place to type in some text for displaying (haven't figured out multi-line)

```html
<section>
    <input type="text", rows=10 style="font-size:16pt; object-position: center; object-fit: contain; height: 25vh; width: 50vw">
</section>
```

- to have fragments in a markdown page you can do the following:

```html
<section>
    <script type="text/template">
        ## Group Discussion

        - What explain these findings (higher stop rates but lower arrest rates) based on what we have learned about race and racism?
            - Targeting of minorities <!-- .element: class="fragment" data-fragment-index="1" -->
            - Racial stereotyping <!-- .element: class="fragment" data-fragment-index="2" -->
            - Implicit bias <!-- .element: class="fragment" data-fragment-index="3" -->
    </script>
</section>
```

- To add color to some markdown text

```html
<section data-markdown>
    <script type="text/template">
        ## Sex & Gender

        > Test text <span style="color: red">highlighted text</span> more test text

        - More text (Citation 2024)
    </script>
</section>
```

- To add columns to a slide you can use the code below as a guide
    - I got this code from [a pull request that hasn't been implemented as of 2024-11-11](https://github.com/hakimel/reveal.js/pull/2031/files)
    - Due to this not being implemented at the time I started using it I incorporated the code needed into my custom themes manually
    - Note that it doesn't work very well with markdown at all even using the script text/template inclusion

```html
<section>
    <h2>Multi-Column Support</h2>
    <div class='multi-col'>
        <div class='col'>
            This is column one of two columns. That usually resides on the left...
        </div>
        <div class='col'>
            ...and column two on the other side.
            <ul class='col'>
                <li>no float needed</li>
                <li>no clearfix needed</li>
            </ul>
        </div>
    </div>
    <h4>...with the very same classes, you can also have 3 or even 4 columns:</h4>
    <div class='multi-col'>
        <div class='col'>Also works for three columns...</div>
        <div class='col'>...as we can show in...</div>
        <div class='col'>...this example here.</div>
    </div>
</section>
```
