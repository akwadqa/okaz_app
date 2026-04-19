
package qa.app.okaz // تأكد أن هذا السطر يطابق الـ package name الخاص بك

import android.content.Context
import android.content.pm.verify.domain.DomainVerificationManager
import android.content.pm.verify.domain.DomainVerificationUserState
import android.os.Build
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "qa.app.okaz/deep_link_status"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "isLinkVerified") {
                val isVerified = checkLinkStatus()
                result.success(isVerified) 
            } else {
                result.notImplemented()
            }
        }
    }

    private fun checkLinkStatus(): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val manager = context.getSystemService(Context.DOMAIN_VERIFICATION_SERVICE) as DomainVerificationManager
            val userState = manager.getDomainVerificationUserState(context.packageName)
            
            val domainStatus = userState?.hostToStateMap?.get("okaz.app")
            
            return domainStatus == DomainVerificationUserState.DOMAIN_STATE_SELECTED || 
                   domainStatus == DomainVerificationUserState.DOMAIN_STATE_VERIFIED
        }
           return true
    }
}