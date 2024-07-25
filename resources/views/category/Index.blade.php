<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
</head>
<body>
    <h1>Category</h1>

    @foreach ($cats as $cat)
        {{ $cat->cat_name }}
    @endforeach

</body>
</html>
