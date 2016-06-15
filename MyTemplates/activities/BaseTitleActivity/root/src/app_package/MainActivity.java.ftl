package  ${packageName};

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

import com.monkey.zhuishu.R;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

/**
 * 
 */
public class ${activityClass} extends BaseActivity {

	@BindView(R.id.title)
    TextView mTitle;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});
		ButterKnife.bind(this);
		mTitle.setText("${activityClass}");
        
    }
	
	@OnClick(R.id.back)
    public void toBack() {
        finish();
    }
}
