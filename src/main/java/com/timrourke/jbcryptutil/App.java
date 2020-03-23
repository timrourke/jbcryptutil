package com.timrourke.jbcryptutil;

import org.mindrot.jbcrypt.BCrypt;

public class App
{
    public static void main( String[] args )
    {
        if (args.length != 1) {
            throw new RuntimeException(
                "Must provide a single string to hash"
            );
        }

        String hashed = BCrypt.hashpw(args[0], BCrypt.gensalt(12));

        System.out.println(hashed);
    }
}
