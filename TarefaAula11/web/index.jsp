<%-- 
    Document   : index
    Created on : 2 de mai. de 2022, 15:45:54
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pacotes.Disciplina"%>

<%
    Disciplina Banco = new Disciplina("BD", "Banco de Dados", "Conceitos de Base de Dados. Modelos conceituais de informações.", "Terça-Feira", "15:00");
    Disciplina Engenharia = new Disciplina("ES", "Engenharia de Software II", "Conceitos, evolução e importância de arquitetura de software.", "Quinta-Feira", "15:00");
    Disciplina Programacao = new Disciplina("POO", "Programação Orientada a Objetos", "Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos.", "Segunda-Feira", "13:10");
    Disciplina Sistemas = new Disciplina("SO", "Sistemas Operacionais II", "Processo de instalação, personalização, operação, administração e segurança sobre o sistema operacional focado.", "Quarta-Feira", "15:00");
    Disciplina Ingles = new Disciplina("ING", "Inglês IV", "Consolidação da compreensão e produção oral e escrita por meio da integração das habilidades lingüístico-comunicativas desenvolvidas na disciplina Inglês 3.", "Sexta-Feira", "13:10");
    Disciplina Metodologia = new Disciplina("MPCT", "Metodologia da Pesquisa Científico-Tecnológica", "Trabalhos acadêmicos: tipos, características e composição estrutural. O projeto de pesquisa experimental e não-experimental.", "Segunda-Feira", "16:50");   
    Disciplina Linguagem = new Disciplina ("LP", "Linguagem de Programação IV", "Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas.", "Sexta-Feira","15:00");

    ArrayList<Disciplina> lista = new ArrayList<>();
    lista.add(Banco); lista.add(Engenharia);
    lista.add(Programacao); lista.add(Sistemas);
    lista.add(Ingles); lista.add(Metodologia);
    lista.add(Linguagem);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa - Aula 11</title>
    </head>
    <body>
        <h1>Horario atual:</h1>
        <%Date hora = new Date();%>
        <% out.print(hora); %>
        <hr> <br>
        
        <table border="1">
            <tr>
                <th>Disciplina</th>
                <th>Sigla:</th>
                <th>Ementa:</th>
                <th>Dia da Semana:</th>
                <th>Horário:</th>
            </tr>
            
            <% for(Disciplina d: lista) {%>
            <tr>
                <td><%= (d.getNome()!=null) ? d.getNome(): "" %></td>
                <td><%= (d.getSigla()!=null) ? d.getSigla(): "" %></td>
                <td><%= (d.getEmenta()!=null) ? d.getEmenta(): "" %></td>
                <td><%= (d.getDiaSemana()!=null) ? d.getDiaSemana(): "" %></td>
                <td><%= (d.getHorarioAula()!=null) ? d.getHorarioAula(): "" %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
