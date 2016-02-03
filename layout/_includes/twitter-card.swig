<meta property="og:type" content="article">
<meta property="og:title" content="{{ page.title }}">
<meta property="og:url" content="{{ site.baseurl }}{{ page.url }}">
{% if page.description %}
  <meta name="description" content="{{ page.description }}">
  <meta property="og:description" content="{{ page.description }}">
{% endif %}
{% if page.cover %}
  <meta property="og:image" content="{{ page.cover }}">
{% elif page.image %}
  <meta property="og:image" content="{{ page.image }}">
{% else %}
  <meta property="og:image" content="/apple-touch-icon-152.png">
{% endif %}
{% if page.cover %}
  <meta name="twitter:card" content="summary_large_image">
{% else %}
  <meta name="twitter:card" content="summary">
{% endif %}
<meta property="og:site_name" content="{{ site.name }}">
<link rel="canonical" href="{{ site.baseurl }}{{ page.url }}">
