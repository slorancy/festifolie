$('#demo-output').delorean({ type: 'paragraphs', amount: 2, character: '',perPara: 3, tag:  'p' });


$('.searchFestival').on('click', function(){
    $('body, html').animate({
        scrollTop: $('#alaffiche').offset.top
    },1500);
})

