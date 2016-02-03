<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#"{% block extra_info %}{% endblock %}>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>{% block title %}{{ config.title }}{% endblock %}</title>
  {% if theme.rss %}
  <link rel="alternate" href="{{ theme.rss }}" title="{{ config.title }}" type="application/atom+xml">
  {% endif %}
  {% if theme.google_webmaster %}
  <meta name="google-site-verification" content="{{ theme.google_webmaster }}" />
  {% endif %}
  {% block extra_meta %}{% endblock %}
  <link rel="stylesheet" href="{{ url_for('yue.css') }}">
  <link rel="stylesheet" href="{{ url_for('ui.css') }}">
  <link rel="stylesheet" href="{{ url_for('site.css') }}">
  <link rel="stylesheet" href="{{ url_for('highlight.css') }}">
  {% block extra_head %}{% endblock %}
  <script>{% include "_includes/ga.js" %}</script>
</head>
<body>
  <header id="header">
    <div class="container yue">
      <a id="brand" href="/">
        <strong>{{ config.title }}</strong>
      </a>
      <nav id="nav">
        {% for item in theme.menu %}
          <a href="{{ item.url }}">{{ item.name }}</a>
        {% endfor %}
      </nav>
    </div>
  </header>
  {% block main %}
    <div id="main">
      <div class="container yue">{% block container %}{% endblock %}</div>
    </div>
  {% endblock %}
  <footer id="footer">
    <div class="container">
      <p>&copy; Copyright 2016 by {{ config.author }}. Designed by <a href="http://lepture.com">Hsiaoming Yang</a></p>
    </div>
  </footer>
</body>
</html>
