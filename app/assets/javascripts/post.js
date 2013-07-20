// this is a descent start, but you can do better. Use objects to organize your code
$(document).ready(function() {

  function fillFields(movieData) {
    // REVIEW: these fields have ids, no need to find them, just $('#title'), etc.
    // if there are multiple of these, then that's not good, you shouldn't have
    // multple elements with the same id, it's illegal
    // if you had to make the $(document).find('.hidden'), assign it to variable, so that way you
    // don't perform that search 4 times.
    $(document).find('.hidden').find('#title').val(movieData.title);
    $(document).find('.hidden').find('#image_url').val(movieData.imageUrl);
    $(document).find('.hidden').find('#clips_url').val(movieData.clipsUrl);
    $(document).find('.hidden').find('#release_date').val(movieData.releaseDate);
  }

  $('#movie_list').on('click', '.movie', function(e){
    movieData = {
      title: $(this).find('.title').text().trim(),
      imageUrl: $(this).find('img').attr('src'),
      releaseDate: $(this).find('.release_date').text().trim(),
      clipsUrl: $(this).find('.clips_url').text().trim()
    };
    fillFields(movieData);
  });

});
