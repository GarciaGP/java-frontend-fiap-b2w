$('#userForm').submit(e => {
    e.preventDefault();

    let serializedData = $("#userForm").serialize();

    $.ajax({
        type: "post",
        url: location.origin + "/java-frontend-fiap-b2w/Usuario",
        data: serializedData,
        success: function() {
            alert("Usuário inserido com sucesso!")
            $('#userForm').trigger("reset");
        },
        error: function() {
            console.log(serializedData)
            alert("Erro no cadastro do usuário.")
        }
    });

})