// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.patricksalami.model;

import com.patricksalami.model.Sell;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Sell_Roo_Json {
    
    public String Sell.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Sell Sell.fromJsonToSell(String json) {
        return new JSONDeserializer<Sell>().use(null, Sell.class).deserialize(json);
    }
    
    public static String Sell.toJsonArray(Collection<Sell> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Sell> Sell.fromJsonArrayToSells(String json) {
        return new JSONDeserializer<List<Sell>>().use(null, ArrayList.class).use("values", Sell.class).deserialize(json);
    }
    
}
