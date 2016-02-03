{% if theme.disqus %}
<div class="entry-comments yue">
  <div id="disqus_thread" class="container"></div>
</div>
<script>
    var disqus_shortname='{{ theme.disqus }}';
    var disqus_title='{{ page.title }}';
    var disqus_url='{{ config.url }}{{ url_for(page.path) }}';
    (function() {
      var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
      dsq.src = 'https://' + disqus_shortname + '.disqus.com/embed.js';
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
{% endif %}
