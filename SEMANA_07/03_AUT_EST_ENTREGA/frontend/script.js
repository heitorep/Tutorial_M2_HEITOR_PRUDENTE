//Primeiro evendo jquery
$("document").ready(function(){
    $("#toggle1").click(function(){
        $("#p1").toggle();
        if(this.textContent != 'Exibir'){
            $("#toggle1").text('Exibir')
        }else{
            $("#toggle1").text('Ocultar')
        }
    });
});

$("document").ready(function(){
    $("#toggle2").click(function(){
        $("#p2").toggle();
        if(this.textContent != 'Exibir'){
            $("#toggle2").text('Exibir')
        }else{
            $("#toggle2").text('Ocultar')
        }
    });
});

$("document").ready(function(){
    $("#toggle3").click(function(){
        $("#p3").toggle();
        if(this.textContent != 'Exibir'){
            $("#toggle3").text('Exibir')
        }else{
            $("#toggle3").text('Ocultar')
        }
        
    });
});

$("document").ready(function(){
    $("#toggle4").click(function(){
        $("#p4").toggle();
        if(this.textContent != 'Exibir'){
            $("#toggle4").text('Exibir')
        }else{
            $("#toggle4").text('Ocultar')
        }
    });
});

$("document").ready(function(){
    $("#toggle5").click(function(){
        $("#p5").toggle();
        if(this.textContent != 'Exibir'){
            $("#toggle5").text('Exibir')
        }else{
            $("#toggle5").text('Ocultar')
        }
    });
});


//Segundo evendo jquery
$("document").ready(function() {
    var lastScrollTop = 0;
    $(window).scroll(function() {
      var scrollTop = $(this).scrollTop();
  
      if (scrollTop > lastScrollTop) {
        // Rolagem para baixo
        $("header").slideUp();
      } else {
        // Rolagem para cima
        $("header").slideDown();
      }
  
      lastScrollTop = scrollTop;
    });
  });

//requisição ajax
$('document').ready(() => {
    $.ajax({
        url: './meuNome.txt',
        type: 'GET',
        dataType: 'text',
        async: true,
        success: (data) => {
            $('#nome').html(data);
        }
    })
})