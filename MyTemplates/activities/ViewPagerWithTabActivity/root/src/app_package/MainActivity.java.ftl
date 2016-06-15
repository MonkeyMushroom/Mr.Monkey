package  ${packageName};

import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.activity.BaseActivity;
import ${packageName}.adapter.TabFragmentPagerAdapter;
import ${packageName}.fragment.${fragmentClass};

/**
 * 
 */
public class ${activityClass} extends BaseActivity {

	@BindView(R.id.title)
    TextView mTitle;

    @BindView(R.id.tab)
    TabLayout mTab;

    @BindView((R.id.pager))
    ViewPager mPager;

    private String[] mTabTitle = {"Tab1"};// TODO
    private List<Fragment> mFragments = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});
		ButterKnife.bind(this);
		mTitle.setText("${activityClass}");
        //选项卡
        mTab.setTabMode(TabLayout.MODE_FIXED);
        for (int i = 0; i < mTabTitle.length; i++) {
            mTab.addTab(mTab.newTab().setText(mTabTitle[i]));
        }
		mFragments.add(${fragmentClass}.newInstance());// TODO
		TabFragmentPagerAdapter pagerAdapter = new TabFragmentPagerAdapter
                (getSupportFragmentManager(), mFragments, mTabTitle);
        mPager.setAdapter(pagerAdapter);
        mTab.setupWithViewPager(mPager);
    }
	
	@OnClick(R.id.back)
    public void toBack() {
        finish();
    }
}
