pragma solidity ^0.8.7;
contract tshirt_order {
    int public x;
    bool public offer;
    string public msg_offer;
    int public payment;
    bool public order_detail;
    string public order_detail_msg;
    
    constructor(bool offer, int x,string order_detail_msg,string memory msg_offer, int payment,bool order_detail) public{
        x = x;
        offer = offer;
        msg_offer = msg_offer;
        order_detail_msg=order_detail_msg
        payment = payment;
        order_detail = order_detail;
    }

    function setOrder(uint _qty) public {
        x = _qty;
    }
    
    function accept_order(bool offer) public return(string){
           if (offer == true){
               msg_offer = "Order Accepted";
           }
           else{
               msg_offer = "Order Rejected";
           }
           return msg_offer;
    }
    function orderDetail(bool order_detail) public view returns(bool)  {
        if (order_detail == true){
            order_detail_msg = "Order Completed"
        }
        else{
            order_detail_msg = "Order Not Completed"
        }
    }
    
}
