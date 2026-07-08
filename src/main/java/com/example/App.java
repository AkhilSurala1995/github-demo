package com.example;

public class App {

    public static void main(String[] args) {

        System.out.println("Hello from GitHub Actions!");

        // Keep the container process alive so Kubernetes doesn't restart it.
        while (true) {
            try {
                Thread.sleep(60_000);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                break;
            }
        }
    }

}
