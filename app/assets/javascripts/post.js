$(document).ready(function() {

  function fillFields(movieData) {
    var hidden_fields = $(document).find('.hidden');
    hidden_fields.find('#title').val(movieData.title);
    hidden_fields.find('#image_url').val(movieData.imageUrl);
    hidden_fields.find('#clips_url').val(movieData.clipsUrl);
    hidden_fields.find('#release_date').val(movieData.releaseDate);
    hidden_fields.find('#critics_score').val(movieData.criticsScore);
    hidden_fields.find('#critics_rating').val(movieData.criticsRating);
    hidden_fields.find('#audience_score').val(movieData.audienceScore);

  }
  $('#movie-list').on('click', '.movie', function(e){
    $('.movie').removeClass('clicked');
    $(this).addClass('clicked');
    // $(this).toggleClass('clicked');
    movieData = {
      title: $(this).find('.title').text().trim(),
      imageUrl: $(this).find('img').attr('src'),
      releaseDate: $(this).find('.release_date').text().trim(),
      clipsUrl: $(this).find('.clips_url').text().trim(),
      criticsRating: $(this).find('.critics_rating').text().trim(),
      criticsScore: $(this).find('.critics_score').text().trim(),
      audienceScore: $(this).find('.audience_score').text().trim()

    };
    fillFields(movieData);
  });
});
