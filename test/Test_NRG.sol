//SPDX-License-Identifier: SimPL-3.0
pragma solidity >0.4.0;

import "truffle/Assert.sol"; // this import is automatically injected by Remix.
import "../contracts/NRG.sol";
//import "../node_modules/hardhat/console.sol";

contract TestNRG {
   
    NRG nrg;  //定义合约变量     
   
    function test_beforeAll () public {
        
        //  simpleStorage = new SimpleStorage();   // 创建一个合约对象  simpleStorage
        // nrg = new NRG();
        // nrg.NRG_Grid_admin();
        // nrg.authorization(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, "nameTest", "addressTest", true, false);
    }
    
    function test_calPrice() public {
        nrg = new NRG();
        nrg.NRG_Grid_admin();
        nrg.authorization(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, "nameTest", "addressTest", true, false);
        console.log("Running valPriceTest");
        Assert.equal(nrg.calPrice(uint(10),uint(200)),uint(2000),"error calculate");
    }
    // function userEnquireTest () public {
    //     // 使用 set（）函数设定 x数值为10 ，将其写入了simpleStorage中 
    //     // nrg.set(uint(10));
    //     nrg.userEnquire();

    //     Assert.equal(nrg.userEnquire(), uint(0), "userEnquire == 0");
    // }
    
    function test_authorization () public {
         console.log("Running authorizationTest");
         Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2), uint(0), "Invalid value");
    }

   function test_extraPower() public 
    {
        console.log("Running extraPowerTest");
        Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2),uint(0),"Invalid value");
        // if(!user[msg.sender].generaterights)
        //     return;
        // user[msg.sender].generationPower+=(int256)(_value);
        // user[msg.sender].totalGenerationPower+=_value;
    }

    function test_transfer() public 
    {
        console.log("Running transferTest");
        Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2) , uint(0),"Invalid value");
        // require(user[msg.sender].generaterights);
        // require(user[_to].userights);
        // require(user[_to].usePower+_value>user[_to].usePower);
        // user[msg.sender].generationPower-=(int256)(_value);
        // user[_to].usePower+=_value; 
    }

    function test_powerConsume() public 
    {
         console.log("Running powerConsumeTest");
        Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2),uint(0),"Invalid value");
        // require(user[msg.sender].userights);
        // require(user[msg.sender].usePower>=_value);
        // user[msg.sender].usePower-=_value;
        // user[msg.sender].totalUsePower+=_value;
    }

    // function PowerDispatchTest(address addr,string memory _info)public {
    //    console.log("Running PowerDispatchTest");
    //     Assert.equal(nrg.powerConsume(0),uint(0),"Invalid value");
    //     // require(msg.sender==administrator);
    //     // user[addr].information=_info;
    // }

    function test_userEnquire()  public
    {
        console.log("Running userEnquireTest");
        Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2),uint(0),"Invalid value");
        // return (user[msg.sender].usePower);
    }

    function test_adminEnquire() public 
    {
        console.log("Running adminEnquire");
        Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2),uint(0),"Invalid value");
        // if(msg.sender==addr||msg.sender==administrator)
        //     return (user[addr].totalUsePower);
    }

    function test_powerTarget() public 
    {    
      console.log("Running powerTargetTest");
        Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2),uint(0),"Invalid value");
        // return (user[msg.sender].generationPower);
    }
    function test_powerGenTotal() public
    {
        console.log("Running powerGenTotal");
        Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2),uint(0),"Invalid value");
        // if(msg.sender==addr||msg.sender==administrator)
        //     return (user[addr].totalGenerationPower);
    }

    function test_fetchInfomation() public 
    {
        console.log("Running fetchInfomationTest");
        Assert.equal(nrg.adminEnquire(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2),uint(0),"Invalid value");
        // return (user[msg.sender].information); 
    }
}
