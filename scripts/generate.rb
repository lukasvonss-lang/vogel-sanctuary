<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>{{ page.title }}</title>
  <meta property="og:title" content="{{ page.title }}">
  <meta property="og:description" content="{{ page.description }}">
  <meta property="og:image" content="{{ page.image | absolute_url }}">
  <meta name="twitter:card" content="summary_large_image">
  <link rel="stylesheet" href="{{ '/style.css' | relative_url }}">
</head>
<body>
  <a href="{{ '/' | relative_url }}">← back</a>
  <h1>{{ page.title }}</h1>
  <img src="{{ page.image | relative_url }}" style="max-width:100%; height:auto;">
  <p>{{ page.description }}</p>
  <p><small>ID: {{ page.post_id }}</small></p>
</body>
</html>
