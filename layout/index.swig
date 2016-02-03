{% extends "base.swig" %}

{% set title = page.title or config.title %}
{% if is_archive() %}
{% set title = "Articles" %}
{% elif is_category() %}
{% set title = 'Category: ' + page.category %}
{% elif is_tag() %}
{% set title = 'Tag: ' + page.category %}
{% endif %}

{% block main %}
<div class="entry-header">
  <div class="container yue">
    {% block header %}
    <h1 class="entry-title">{{ title }}</h1>
    <p class="entry-description">{{ config.description }}</p>
    {% if theme.rss %}
    <a class="button" href="{{ theme.rss }}" title="{{ config.title }}">Feed</a>
    {% endif %}
    {% endblock %}
  </div>
</div>

<div id="main" class="container yue">
  <ul class="entry-list" role="main">
    {% for p in page.posts %}
    <li class="entry-item" itemscope itemtype="http://schema.org/Article">
    <div class="entry-meta">
      <time class="updated" itemprop="datePublished" datetime="{{ p.date }}">{{ p.date|date('M d, Y') }}</time> <em>{{ wordcount(post.content) }} words</em>
    </div>
    <div class="detail">
      <h2 itemprop="name"><a itemprop="url" href="{{ url_for(p.path) }}">{{ p.title }}</a></h2>
      {% if p.description %}
      <div itemprop="description"><a href="{{ url_for(p.path) }}" class="description">{{ p.description }}</a></div>
      {% endif %}
    </div>
    </li>
    {% endfor %}
  </ul>

  {% if page.prev_link or page.next_link %}
  <div class="paginator" role="navigation">
    {% if page.prev %}
      <a class="previous" href="{{ url_for(page.prev_link) }}">Previous</a>
    {% else %}
      <span class="previous">Previous</span>
    {% endif %}
    <em>{{ page.current }}</em>
    {% if page.next %}
      <a class="next" href="{{ url_for(page.next_link) }}">Next</a>
    {% else %}
      <span class="next">Next</span>
    {% endif %}
  </div>
  {% endif %}
</div>
{% endblock %}
