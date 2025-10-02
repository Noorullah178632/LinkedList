//make a class for node
class Node {
  int data;
  Node? next;
  Node(this.data);
}

//make a class for the functions
class SingleLinkedList {
  Node? head;
  //insert element in the begining
  void insertAtBegining(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  //delete element in the last
  void insertAtLast(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node temp = head!;
    while (temp.next != null) {
      temp = temp.next!;
    }
    temp.next = newNode;
    newNode.next = null;
  }

  //insert in the random place
  void insertRandom(int key, int data) {
    //we select key=20 and data =25
    Node? temp =
        head!; //if i have a list [10,20,30,null], now we select 10 because it's head
    while (temp != null && temp.data != key) {
      //if the one condition is true the loop will break
      temp =
          temp.next; //if the condition is false it move from 10 to 20 and so on
    }
    //if we didn't find the key
    if (temp == null) {
      //if we didn't find the key and we find null then it will print the statemnt and terminate the function
      print("we can't find any key : $key");
      return;
    }
    Node newNode = Node(data); //we take the node which is 25
    newNode.next = temp.next; // if temp=10 then temp.next =20 in this line
    temp.next =
        newNode; //in this line temp.next is 10 not 20 because we apply the read and write rule ,
    //if we use temp.next on the right side we will assign the next value (write)
    //if we use temp.next on the left side we will read only the original value not assigning to the new value
  }

  //display the list
  List display() {
    Node? temp = head!;
    List<int> storedData = [];
    while (temp != null) {
      storedData.add(temp.data);
      temp = temp.next;
    }
    return storedData;
  }
}

//main function of the code
void main() {
  SingleLinkedList a = SingleLinkedList();
  a.insertAtBegining(10);
  a.insertAtBegining(20);
  a.insertAtLast(33);
  a.insertRandom(10, 18);
  a.insertRandom(11, 15);

  print(a.display());
}
