package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/**
 * 
 */
public class ${fragmentClass} extends Fragment {
    
	private static ${fragmentClass} fragment;

    public static ${fragmentClass} newInstance() {
        if (fragment == null) {
            fragment = new ${fragmentClass}();
        }
        return fragment;
    }

    Unbinder unbinder;
	
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
        unbinder = ButterKnife.bind(this, view);
		
        return view;
    }
	
	@Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();
    }
}
