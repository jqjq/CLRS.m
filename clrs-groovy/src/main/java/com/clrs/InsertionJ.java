////
//// Source code recreated from a .class file by IntelliJ IDEA
//// (powered by Fernflower decompiler)
////
//
//package com.clrs;
//
//import groovy.lang.GroovyObject;
//import groovy.lang.MetaClass;
//import java.util.Iterator;
//import org.codehaus.groovy.runtime.ScriptBytecodeAdapter;
//import org.codehaus.groovy.runtime.callsite.CallSite;
//
//public class Insertion implements GroovyObject {
//    public Insertion() {
//        CallSite[] var1 = $getCallSiteArray();
//        MetaClass var2 = this.$getStaticMetaClass();
//        this.metaClass = var2;
//    }
//
//    public static void sort(Object a) {
//        CallSite[] var1 = $getCallSiteArray();
//        Object j = null;
//        Iterator var3 = (Iterator)
//                ScriptBytecodeAdapter.castToType(
//                        var1[0].call(
//                                ScriptBytecodeAdapter.createRange(
//                                        2,
//                                        var1[1].call(var1[2].callGetProperty(a), 1),
//                                        (boolean)1)),
//                        Iterator.class);
//
//        while(var3.hasNext()) {
//            j = var3.next();
//            Object key = var1[3].call(a, j);
//            Object i = null;
//            Object var6 = var1[4].call(j, 1);
//
//            for(i = var6; ScriptBytecodeAdapter.compareGreaterThanEqual(i, 0) && ScriptBytecodeAdapter.compareGreaterThan(var1[5].call(a, i), key); i = var1[9].call(i)) {
//                Object var7 = var1[6].call(a, i);
//                var1[7].call(a, var1[8].call(i, 1), var7);
//            }
//
//            var1[10].call(a, var1[11].call(i, 1), key);
//        }
//
//    }
//
//    static {
//        __$swapInit();
//        Long var0 = 0L;
//        __timeStamp__239_neverHappen1587715010783 = var0;
//        Long var1 = 1587715010782L;
//        __timeStamp = var1;
//    }
//}
