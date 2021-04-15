### Appendix A


#### Stylesheet for Reporting Stars
When using [Bootstrap](https://getbootstrap.com/) with [Glyphicons](https://getbootstrap.com/docs/3.3/components/),
the [stylesheet below](#assess) can be used to simplify reporting the stars ratings (this is compatible
with the FHIR IG Builder tools).

##### Assessing a Device or System
The section below depicts the markdown used to report an assessment on a device or system.
~~~
> Physical Activity and Sleep <span class="glyphicon stars0" aria-hidden="true"></span> 0/3+1/3<br/>
> > Sleep <span class="glyphicon stars1" aria-hidden="true"></span> 1/3+1/3<br/>
> Basic Vital Signs <span class="glyphicon stars3" aria-hidden="true"></span> 10/11+3/11
> > Basic SPO2 <span class="glyphicon stars3" aria-hidden="true"></span> 2/3+1/3<br/>
> > Basic Respiration and Pulse <span class="glyphicon stars3" aria-hidden="true"></span> 3/3+0/3<br/>
> > Basic Blood Pressure <span class="glyphicon stars4" aria-hidden="true"></span> 3/3+1/3<br/>
> > Basic Height and Weight <span class="glyphicon stars5" aria-hidden="true"></span> 2/3+1/2<br/>
~~~

##### Assessing an Implementation Guide
The section below depicts the markdow used to report an assessment on an implementation
guide.

~~~
> Physical Activity and Sleep <span class="glyphicon stars1" aria-hidden="true"></span> 1+2/6+6
> > Physical Activity <span class="glyphicon stars0" aria-hidden="true"></span> 0+1/3+3<br/>
> > Sleep <span class="glyphicon stars1" aria-hidden="true"></span> 1+1/3+3<br/>

> Basic Vital Signs <span class="glyphicon stars3-5" aria-hidden="true"></span> 10-11+4-9/11+11
> > Basic SPO2 <span class="glyphicon stars2-3" aria-hidden="true"></span> 2-3+1-3/3+3<br/>
> > Basic Respiration and Pulse <span class="glyphicon stars3-5" aria-hidden="true"></span> 3+0-2/3+3<br/>
> > Basic Blood Pressure <span class="glyphicon stars3-5" aria-hidden="true"></span> 3+1-3/3+3<br/>
> > Basic Height and Weight <span class="glyphicon stars5" aria-hidden="true"></span> 2+1-2/2+2<br/>
~~~

##### assess.css
<span id='assess'> </span>
```
.glyphicon:after {
    font-family: 'Glyphicons Halflings';
    font-style: normal;
    font-weight: 400;
    line-height: 1;
    -webkit-font-smoothing: antialiased
}

.stars0:before {
    content: "\e007\e007\e007\e007\e007";
    color: #b94a48;
}

.stars0-1:before {
    content: "\e006";
    color: #468847;
}

.stars0-2:before {
    content: "\e007\e007";
    color: #468847;
}

.stars0-3:before {
    content: "\e007\e007\e007";
    color: #468847;
}

.stars0-4:before {
    content: "e007\e007\e007\e007";
    color: #468847;
}

.stars0-5:before {
    content: "\e007\e007\e007\e007\e007";
    color: #468847;
}

.stars1:before {
    content: "\e006";
    color: #468847;
}
.stars1-2:before {
    content: "\e006\e007";
    color: #468847;
}
.stars1-3:before {
    content: "\e006\e007\e006";
    color: #468847;
}
.stars1-4:before {
    content: "\e006\e007\e007\e007";
    color: #468847;
}
.stars1-5:before {
    content: "\e006\e007\e007\e007\e007";
    color: #468847;
}
.stars1:after, .stars0-1:after {
    content: "\e007\e007\e007\e007";
    color: #b94a48;
}

.stars2:before {
    content: "\e006\e006";
    color: #468847;
}
.stars2-3:before {
    content: "\e006\e006\e007";
    color: #468847;
}
.stars2-4:before {
    content: "\e006\e006\e007\e007";
    color: #468847;
}
.stars2-5:before {
    content: "\e006\e006\e007\e007\e007";
    color: #468847;
}
.stars2:after, .stars0-2:after, .stars1-2:after {
    content: "\e007\e007\e007";
    color: #b94a48;
}

.stars3:before {
    content: "\e006\e006\e006";
    color: #468847;
}
.stars3-4:before {
    content: "\e006\e006\e006\e007";
    color: #468847;
}
.stars3-5:before {
    content: "\e006\e006\e006\e007\e007";
    color: #468847;
}
.stars3:after, .stars0-3:after, .stars1-3:after, .stars2-3:after  {
    content: "\e007\e007";
    color: #b94a48;
}

.stars4:before {
    content: "\e006\e006\e006";
    color: #468847;
}
.stars4-5:before {
    content: "\e006\e006\e006\e006\e007";
    color: #468847;
}
.stars4:after, .stars0-4:after, .stars1-4:after, .stars2-4:after, .stars3-4:after {
    content: "\e007";
    color: #b94a48;
}

.stars5:before {
    content: "\e006\e006\e006\e006\e006";
    color: #468847;
}
```