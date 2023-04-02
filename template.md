$if(titleblock)$
$titleblock$

$endif$
$for(header-includes)$
$header-includes$
$endfor$


$for(include-before)$
$include-before$

$endfor$
$if(toc)$
$table-of-contents$

$endif$
$body$
$for(include-after)$

$include-after$

$endfor$

<div class="row">

<div class="column">
<ul class="fa-ul">
$if(show_phone)$
<li> <span class="fa-li"> <i class="fa fa-phone"></i></span> $phone$</li>
$endif$
$if(show_residence)$
<li> <span class="fa-li"> <i class="fa fa-map-marker"></i></span> $residence$</li>
$endif$
$if(show_from)$
<li> <span class="fa-li"> <i class="fa fa-home"></i></span> $from$</li>
$endif$
</ul>

</div>

<div class="column, right">
<ul class="fa-ul">
<li> <span class="fa-li"> <i class="fa fa-envelope"></i></span> $email$</li>
<li> <span class="fa-li"> <i class="fa fa-github"></i></span> <a href="$github$"> $github$ </a> </li>
<li> <span class="fa-li"> <i class="fa fa-globe"></i></span> <a href="$website$"> $website$ </a></li>
</ul>
</div>

</div>


## Summary

$summary$

## Profesional Experience

$for(experience)$
$if(it.show)$
**$it.date$**
:    <div class="left"> $it.name$ </div> <div class="right"> **$it.company$** </div> <br> 
    <p> $it.description$ </p>
$endif$
$endfor$

## Education

$for(education)$
**$it.date$**
:    <div class="left"> $it.name$ </div> <div class="right"> **$it.school$** </div> <br> 
    <p> $it.description$ </p>

$endfor$

## Skills
$for(skills)$

**$it.name$**
:   <p> $it.description$ </p>

$endfor$



$if(show_references)$

## List of Publications
$for(references)$
* <cite>$references.title$. $for(references.author)$ $it.family$, $it.given$; $endfor$. $references.container-title/chomp$. $for(references.issued)$ $it.year$$endfor$.</cite>
$endfor$

$endif$

