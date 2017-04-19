package com.ustone.plugin.update;

public class Version {
    private int local;
    private int remote;

    public Version(int local, int remote) {
        this.local = local;
        this.remote = remote;
    }

    public int getLocal() {
        return local;
    }

    public int getRemote() {
        return remote;
    }
}