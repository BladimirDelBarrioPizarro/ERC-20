// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// ERC-20 https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20

interface IRC20 {
    
    // Devuelve la cantidad total de tokens existentes en circulación.
    function totalSupply() external view returns (uint256);
    
    // Devuelve la cantidad de tokens que posee una cuenta específica (account).
    function balanceOf(address account) external view returns (uint256);
    
    /*
    Realiza una transferencia de tokens desde el emisor (msg.sender)
    hacia un destinatario (recipient).
    
    amount: cantidad de tokens que se desea transferir.
    
    Devuelve un valor booleano que indica si la operación tuvo éxito.
    Emite un evento Transfer indicando el envío de tokens.
    */
    function transfer(address recipient, uint256 amount) external returns (bool);

   /*
    Devuelve el número restante de tokens que el "spender" (gastador) 
    tiene permiso para gastar en nombre del "owner" (propietario) 
    mediante la función transferFrom.
    
    Por defecto, este valor es cero.
    El valor cambia cada vez que se llama a approve o transferFrom.
    */
    function allowance(address owner, address spender) external view returns (uint256);
    
    /*
    Permite que el "spender" gaste una cantidad específica de tokens 
    del balance del "owner".
    
    amount: cantidad máxima que el "spender" puede gastar.
    
    Devuelve un valor booleano que indica si la operación tuvo éxito.
    Emite un evento Approval cuando se establece o cambia la asignación.
    */
    function approve(address spender, uint256 amount) external returns (bool);

    /*
    Transfiere tokens desde una dirección (sender) a otra (recipient)
    usando la cantidad permitida previamente mediante approve.
    
    - sender: dirección del propietario de los tokens.
    - recipient: dirección del destinatario de los tokens.
    - amount: cantidad de tokens que se transferirá.
    
    Devuelve un valor booleano que indica si la operación tuvo éxito.
    Emite un evento Transfer indicando el movimiento de tokens.
    */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /*
    Evento que se emite cuando los tokens se transfieren:
    - desde la dirección "sender" hacia la dirección "recipient".
    - value: cantidad de tokens transferidos.
    */ 
    event Transfer(address indexed sender, address indexed recipient, uint256 value);

    /*
    Evento que se emite cuando un propietario aprueba a un "spender"
    para gastar una cantidad específica de tokens en su nombre.
    - owner: dirección que otorga el permiso.
    - spender: dirección que recibe el permiso.
    - value: cantidad máxima permitida.
    */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}



