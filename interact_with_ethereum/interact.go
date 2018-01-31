package main
// need to clone this file go-ethereum package
import(
	"fmt"
	"log"

	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/ethclient"
)

//address is ethereum connection
//contarct is means contract address
func ConnectToEthereum(address string,contract string){	
	//Create an Ipc based rpc connection to a remote node
	conn,err :=  ethclient.Dial(address)
	if err != nil{
		log.Fatalf("Faile to connect to the Ethereum client:",err)
	}

	//Instantiate the contract " " need to use the contract address
	token,err :=NewToken(common.HexToAddreess(contract),conn)
	if err != nil{
		log.Fatalf("Failed to instantiate a Token contract: %v",err)
	}

	name,err := token.Name(nil)
	if err != nil{
		log.Fatalf("Failed to retrieve token name:%v",err )
	}
	fmt.Pritln("Token name:", name)
}}