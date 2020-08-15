package bai11_dsa_stack_queue.thuc_hanh.trien_khai_stack_su_dung_lop_linkedList_trong_thu_vien_java.util;

public class GenericStackClient {

    //phương thức stackOfStrings()
    private static void stackOfIStrings() {
        MyGenericStack<String> stack = new MyGenericStack();
        stack.push("One");
        stack.push("Four");
        stack.push("Three");
        stack.push("Two");
        stack.push("Five");
        System.out.println("1.1 Size of stack after push operations: " + stack.size());
        System.out.printf("1.2. Pop elements from stack : ");
        while (!stack.isEmpty()) {
            System.out.printf(" %s", stack.pop());
        }
        System.out.println("\n1.3. Size of stack after pop operations : " + stack.size());
    }


    //phương thức stackOfIntegers()
    private static void stackOfIntegers() {
        MyGenericStack<Integer> stack = new MyGenericStack();
        stack.push(5);
        stack.push(4);
        stack.push(3);
        stack.push(2);
        stack.push(1);
        System.out.println("2.1. Size of stack after push operations: " + stack.size());
        System.out.printf("2.2. Pop elements from stack : ");
        while (!stack.isEmpty()) {
            System.out.printf(" %d", stack.pop());
        }
        System.out.println("\n3.3 Size of stack after pop operations : " + stack.size());
    }

    public static void main(String[] args) {
        System.out.println("1. Stack of Strings");
        stackOfIStrings();
        System.out.println("\n2. Stack of integers");
        stackOfIntegers();
    }
}