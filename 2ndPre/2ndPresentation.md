## Second Presentation
###### Interim Presentation – April 5, 2023 - Blockchain & Ecosystem
---

1. smart contract running:(概括一下pbft在里面怎么在trading里发挥作用，如果可以的话可以加上根据电量供需调控价格的解释

    #### Why PBFT
    
    To protect distributed systems from malicious users, Practical Byzantine Fault Tolerance (PBFT) was proposed in as an improved and practical protocol based on original Byzantine Fault Tolerance (BFT). Comparing to the Proof based consensus such as PoW, where the security threshold is 51 percent, i.e., absolute secure transaction can be achieved if the malicious user(s) occupies no more than half of the overall resource, PBFT requires the number of malicious users under 33 percent of total participants to ensure the system immune from the malicious attacks. PBFT is favoured for private and consortium chains, thanks to the lower complexity and low energy consumption, which is particularly important for wireless IoT applications. 
    >W. Li, C. Feng, L. Zhang, H. Xu, B. Cao and M. A. Imran, "A Scalable Multi-Layer PBFT Consensus for Blockchain," in IEEE Transactions on Parallel and Distributed Systems, vol. 32, no. 5, pp. 1146-1160, 1 May 2021, doi: 10.1109/TPDS.2020.3042392.

    #### How PBFT Consensus works
    讲PBFT与共识机制如何运作，有配图：
    The protocol and communication complexity of original single-layer PBFT are briefly analyzed in this subsection. [$Fig. PBFT \& Consensus.png$] shows the protocol diagram of the original single-layer PBFT. As an example, we assume there is one primary node and three state machine replicas. The consensus is triggered by a client sending a request to the nodes’ header (Replica 0). Then consensus will be operated among the nodes, and if an agreement is reached among the replicas, the new record will be committed to the blockchain, vice versa.The whole consensus process includes three stages $pre - prepare$, $prepare$ and $commit$ as shown in [$Fig XX$] On receiving the request from the client, the primary node (i.e., Replica 0) broadcasts a $pre - prepare$ message to the other nodes. In $prepare$ and $commit$ stages, all replicas send messages to check the validity of received messages. In each stage, a minimum number of consistent messages are required for stepping into the subsequent stage.
    >10.1109/TPDS.2020.3042392

    引回到hyperledger：
    Back to Hyperledger. Hyperledger uses the classic PBFT protocol. $O(N^2)$ where $N$ is the number of nodes. PBFT can tolerate fewer than $N\over3$ failures, and works in three phases in which nodes broadcast messages to each other. First, the pre-prepare phase selects a leader which chooses a value to commit. Next, the prepare phase broadcasts the value to be validated. Finally, the commit phase waits for more than two third of the nodes to confirm before announcing that the value is committed.
    >10.1145/3035918.3064033

    #### 根据电量供需调控价格的解释
    The potential benefits of blockchain adoption for smart grids include decentralized peer-to-peer (P2P) energy trading without the need of a third-party intermediary. In a conventional power grid, energy prices are determined by a central authority. In a smart grid, agents should be allowed to negotiate energy prices, hence creating a dynamic market of energy trade. Such a market-based energy trade decreases dependency of agents on a central energy provider, as energy supply and demand are matched directly between individual agents, resulting in a more decentralized and competitive environment. 

    Distribution System Operator (DSO) is a mediator. The system is assumed to allow a dynamic negotiation of the energy price. A producer receives a number of coins proportional to the energy produced, and, similarly, the consumer is billed for the energy consumed. The balance between the energy demand and energy production is held by a DSO substation, which is a node in the network. 
    
    Also, the price is computed in near real time (in a certain period like 15 min) by the DSO according to a function dependent on the energy consumption and production rates in the region. The function is focused on the residential sector and used an agent-based hierarchical architecture for demand side, allowing households to transact their surplus/lack of energy with neighbors, aggregators, or mediators. IoT technologies are used for smart homes interaction while a blockchain based platform is proposed to transact using self-enforcing smart contracts.
    >10.3390/s18010162

    >10.1109/TII.2017.2786307

    >10.1109/TDSC.2016.2616861


   

2. data on-chain:
- transaction data
- identity data
- consensus data
1. data off-chain:
- energy production/ consumption data
- sensitive financial/payment data
1. funding:
- property, financial status verification
- credit assessment: combine the credit assessment with the reward-penalty mechanism. For example, someone who continuously consumes solar energy provided by other prosumers in his community is more likely to get higher credit because he is more loyal to renewable energy.(here we assume those who need financial support to install microgrid property would not be the 1st to join) .Or someone who owns EV will get higher credit than those who do not.