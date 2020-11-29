/** 5) Obter o último elemento de uma lista.
Ex.: ?- ultimo([1, 2, 3, 4], U). --- U = 4 . */

/** Se a lista tem apenas um elemento, logo este será o último. Caso contrário,
utilizamos de um elemento anônimo (basicamente removendo-o), utilizando do restante
da lista passada, até obtermos apenas um elemento que será o último */

ultimo([X],X).
ultimo([_|Y],U) :- ultimo(Y,U).