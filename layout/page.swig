{% extends "base.swig" %}

{% block title %}{{ page.title }} — {{ config.title }}{% endblock %}

{% block extra_meta %}
  {% include "_includes/twitter-card.swig" %}
{% endblock %}

{% block main %}
<article id="main" role="main" class="hentry yue" itemscope itemtype="http://schema.org/Article">
{% if page.cover %}
<style>
  .entry-header[data-cover]:before {background-image: url({{page.cover}});}
</style>
<link itemprop="image" href="{{ page.cover }}">
{% endif %}
<div class="entry-header"{% if page.cover %} data-cover="{{ page.cover }}"{% endif %}>
  <div class="container">
    <h1 class="entry-title" itemprop="name">{{ page.title }}</h1>
    <p class="entry-description" itemprop="headline">{{ page.description }}</p>
    <div class="entry-meta">
      {% if page.github %}
        <a class="button" rel="nofollow" href="https://github.com/{{ page.github }}">GitHub</a>
      {% elif page.link %}
        <a class="button" rel="nofollow" href="{{ page.link }}">Link</a>
      {% endif %}
    </div>
  </div>
</div>
  <div class="entry-content container" itemprop="articleBody">
    {{ page.content }}
  </div>
  <span class="author vcard hide">
    <span class="fn" itemprop="author">{{ config.author }}</span>
  </span>
</article>
{% endblock %}
