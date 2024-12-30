"""
milk_opinion/__init__.py
该文件会在 Django 启动时最先执行，是替换 mysqlclient 最佳位置
"""
import pymysql

pymysql.install_as_MySQLdb()

# 其余可为空
