/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var funcCad = '<div class="back" style="margin-top: 350px;">'+   
                        '<h2 style="color: #ffffff">Cadastrar funcionário</h2>'+ 
                        '<form action="<%=request.getContextPath()%>/cadastro" method="POST">'+ 
                            '<div class="form-group">'+ 
                                '<label for="nome" name="nome">Nome</label>'+ 
                                '<input type="text" class="form-control" name="nome" placeholder="Digite o nome do funcionário">'+ 
                            '</div>'+ 
                            '<div class="form-group">'+ 
                                '<label for="cpf" name="cpf">CPF</label>'+ 
                                '<input type="text" class="form-control" name="cpf" placeholder="Digite o CPF do funcionário">'+ 
                            '</div>'+ 
                            '<div class="form-group">'+ 
                                '<label for="cargo" name="cargo">Cargo</label>'+ 
                                '<input type="text" class="form-control" name="cargo" placeholder="Digite o cargo do funcionário">'+ 
                            '</div>'+ 
                            '<div class="form-group">'+ 
                                '<label for="password" name="senha">Senha</label>'+ 
                                '<input type="password" class="form-control" name="senha" placeholder="Digite a senha do funcionário">'+ 
                            '</div>'+ 
                            '<div class="form-group">'+ 
                                '<label for="rua" name="rua">Endereço</label>'+ 
                                '<input type="text" class="form-control" name="rua" placeholder="Digite o endereço do funcionário">'+ 
                            '</div>'+ 
                            '<div class="form-group">'+ 
                                '<label for="cidade" name="cidade">Cidade</label>'+ 
                                '<input type="text" class="form-control" name="cidade" placeholder="Digite a cidade do funcionário">'+ 
                            '</div>'+ 
                            '<div class="form-group">'+ 
                                '<label for="cep" name="cep">CEP</label>'+ 
                                '<input type="text" class="form-control" name="cep" placeholder="Digite o CEP do funcionário">'+ 
                            '</div>'+ 
                            '<div class="form-group">'+ 
                                '<label for="fone" name="fone">Telefone</label>'+ 
                                '<input type="text" class="form-control" name="fone" placeholder="Digite o telefone do funcionário">'+ 
                            '</div>'+ 
                            '<div class="form-check"></div>'+ 
                            '<button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Cadastrar</button>'+ 
                        '</form>'+ 
                    '</div>';
        
        
function cadFunc() {
    document.getElementById("campo").innerHTML = funcCad;
}


