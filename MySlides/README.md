# MySlides

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

- For putting a YouTube video into a slide

```html
<section>
    <iframe width="900" height="650" src="https://www.youtube.com/embed/5tc2X8xLGPI" frameborder="0" allowfullscreen></iframe>
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
    <section>
        <input type="text", rows=10 style="font-size:16pt; object-position: center; object-fit: contain; height: 25vh; width: 50vw">
    </section>
</section>
```
