$(document).ready(function() {

  function fillFields(movieData) {
    var hidden_fields = $(document).find('.hidden');
    hidden_fields.find('#title').val(movieData.title);
    hidden_fields.find('#image_url').val(movieData.imageUrl);
    hidden_fields.find('#clips_url').val(movieData.clipsUrl);
    hidden_fields.find('#release_date').val(movieData.releaseDate);
  }
  $('#movie-list').on('click', '.movie', function(e){
    // $('.movie').removeClass('clicked');
    // $(this).addClass('clicked');
    $(this).toggleClass('clicked');
    movieData = {
      title: $(this).find('.title').text().trim(),
      imageUrl: $(this).find('img').attr('src'),
      releaseDate: $(this).find('.release_date').text().trim(),
      clipsUrl: $(this).find('.clips_url').text().trim()
    };
    fillFields(movieData);
  });
});
