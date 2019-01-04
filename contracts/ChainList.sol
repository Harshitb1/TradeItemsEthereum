pragma solidity ^0.4.18;

contract ChainList {
  address seller;
  string name;
  string description;
  uint price;

  event LogSellArticle(
    address indexed _seller,
    string _name,
    uint256 _price
  );

  function sellArticle (string _name, string _description, uint _price) public {
    seller = msg.sender;
    name= _name;
    description = _description;
    price = _price;
    LogSellArticle(seller, name, price);

  }

  function getArticle() public view returns
  (address _seller ,
    string _name,
    string _description,
    uint _price)
    {
      return (seller, name, description, price);
  }
}
