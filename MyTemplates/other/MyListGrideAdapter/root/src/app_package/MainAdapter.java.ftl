package  ${packageName};

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import ${packageName}.R;
import ${packageName}.bean.YourBean;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;


/**
 * 
 */
public class ${adapterClass} extends BaseAdapter {

	private Context mContext;
    private List<YourBean> ${listName};
    private LayoutInflater inflater;

    public BookListAdapter(Context mContext, List<YourBean> ${listName}) {
        this.mContext = mContext;
        this.${listName} = ${listName};
        inflater = LayoutInflater.from(mContext);
    }

    @Override
    public int getCount() {
        return ${listName}.size();
    }

    @Override
    public Object getItem(int position) {
        return ${listName}.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        if (convertView == null) {
            convertView = inflater.inflate(R.layout.${adapterLayoutName}, parent, false);
            holder = new ViewHolder(convertView);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        YourBean book = ${listName}.get(position);
        Glide.with(mContext).load(book.getCover()).into(holder.cover);
        holder.title.setText(book.getTitle());
        return convertView;
    }

    public class ViewHolder {
        @BindView(R.id.cover)
        ImageView cover;
        @BindView(R.id.title)
        TextView title;

        public ViewHolder(View view) {
            ButterKnife.bind(this, view);
        }
    }
}
