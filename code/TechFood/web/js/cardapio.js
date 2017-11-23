/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var cardCad = '<div class="back" style="margin-top: 350px;">'+
    '<h2 style="color: #ffffff">Cadastrar cardápio</h2>'+
        '<form action="<%=request.getContextPath()%>/criacardapio" method = "POST" enctype="multipart/form-data">'+
            '<div class="form-group">'+
                '<label for="nomeCard" name="nomeCard">Nome</label>'+
                '<input type="text" class="form-control" name="nomeCard" placeholder="Digite o nome do produto">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="precoCard" name="precoCard">Preço</label>'+
                '<input type="text" class="form-control" name="precoCard" placeholder="Digite o preço do produto">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="obsCard" name="obsCard">Observação</label>'+
                '<input type="text" class="form-control" name="obsCard" placeholder="Digite a observação do produto">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="file" name="file">Imagem</label>'+
                '<button type="submit" name="file" class="btn btn-primary" style="background-color: #fe6103; border: none">Escolher arquivo</button>'+
            '</div>'+
            '<button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Cadastrar</button>'+
        '</form>'+
'</div>';        
        
function cadCard() {
    document.getElementById("campo").innerHTML = cardCad;
}
function consCard(div2, div1) {
    var divstyle = new String();        
    divstyle = document.getElementById(div1).style.display;

    var divAux = new String();        
    divAux = document.getElementById(div2).style.display;
      
      if (divAux=="block" || divAux == ""){
	   document.getElementById(div2).style.display = "none";
           document.getElementById(div1).style.display = "block";
	}   
	
	document.getElementById(div1).style.display = "block";
}
