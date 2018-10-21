using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ShopManager
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
     

        }

        private void tB_Username_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void button_Login_Click(object sender, EventArgs e)
        {
            string userName = tB_Username.Text.Trim();
            string password = tB_Password.Text.Trim();

            if (String.IsNullOrEmpty(userName))
            {
                MessageBox.Show("请输入账号!");
            }
            else if (String.IsNullOrEmpty(password))
            {
                MessageBox.Show("请输入密码!");
            }else if (userName != "635438")
            {
                MessageBox.Show("账号不正确");
            }else if (password != "635438")
            {
                MessageBox.Show("密码不正确");
            }else
            {
                MessageBox.Show("欢迎使用用户商品系统");
                return;
            }

        }

        private void button_Exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
