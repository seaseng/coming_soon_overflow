$(document).ready(function() {

  function fillFields(movieData) {
    $(document).find('.hidden').find('#title').val(movieData.title);
    $(document).find('.hidden').find('#image_url').val(movieData.imageUrl);
    $(document).find('.hidden').find('#clips_url').val(movieData.clipsUrl);
    $(document).find('.hidden').find('#release_date').val(movieData.releaseDate);
  }
  $('#movie-list').on('click', '.movie', function(e){
    $('.movie').removeClass('clicked');
    $(this).addClass('clicked');
    movieData = {
      title: $(this).find('.title').text().trim(),
      imageUrl: $(this).find('img').attr('src'),
      releaseDate: $(this).find('.release_date').text().trim(),
      clipsUrl: $(this).find('.clips_url').text().trim()
    };
    fillFields(movieData);
  });
});
