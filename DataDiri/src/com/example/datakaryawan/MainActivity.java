package com.example.datakaryawan;



import android.support.v7.app.ActionBarActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Toast;

public class MainActivity extends ActionBarActivity {
	EditText in1;
	EditText in2;
	RadioButton rb1;
	RadioButton rb2;
	CheckBox cb1;
	CheckBox cb2;
	CheckBox cb3;
	Button btn;
	StringBuilder sb;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		
		in1 = (EditText) findViewById(R.id.editText1);
		in2 = (EditText) findViewById(R.id.editText2);
		rb1 = (RadioButton) findViewById(R.id.radioButton1);
		rb2 = (RadioButton) findViewById(R.id.radioButton2);
		cb1 = (CheckBox) findViewById(R.id.checkBox1);
		cb2 = (CheckBox) findViewById(R.id.checkBox2);
		cb3 = (CheckBox) findViewById(R.id.checkBox3);
		
		btn = (Button) findViewById(R.id.button1);
		
		
		
		
		btn.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View arg0) {
				sb = new StringBuilder();
				sb.append("Nama :"+in1.getText().toString()+"\n");
				sb.append("Email :"+in2.getText().toString()+"\n");
				sb.append("Laki-laki ? "+rb1.isChecked()+"\n");
				sb.append("Perempuan ? "+rb2.isChecked()+"\n");
				sb.append("Membaca ? "+cb1.isChecked()+"\n");
				sb.append("Memancing ? "+cb2.isChecked()+"\n");
				sb.append("Bersepeda ? "+cb3.isChecked()+"\n");
				
				// TODO Auto-generated method stub
            	Toast.makeText(getBaseContext(),sb.toString(), Toast.LENGTH_LONG).show();
			}
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
}
