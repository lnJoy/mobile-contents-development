package com.sad.verysad;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build.VERSION;
import android.os.Build.VERSION_CODES;
import android.os.Bundle;


public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "mobile.contest.develoment/ebslogin";

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            // Note: this method is invoked on the main thread.
                            if (call.method.equals("getClassSubjects")) {
                                String loginResult = getClassSubjects(call.argument("id"), call.argument("pw"));

                                if (loginResult != null) {
                                    result.success(loginResult);
                                } else {
                                    result.error("UNAVAILABLE", "Login Failed.", null);
                                }
                            } else {
                                result.notImplemented();
                            }
                        }
                );
    }

    private String getClassSubjects(String id, String pw) {
        final String _id = "test";
        final String _pw = "test";

        String loginResult = "Login Failed..";
        if(id.equals(_id) && pw.equals(_pw)) {
            loginResult = "Login Success!!";
        }

        return loginResult;
    }
}
