FROM jupyter/datascience-notebook

# 公式のイメージではユーザーがjovyan(Jupyter Userのことをこう呼ぶらしい)
# 深い意味はなく他ユーザーを作成するが省略可能
USER root

RUN groupadd student && useradd -m -g student student
RUN mkdir /home/student/notebooks
RUN chown -R student:student /home  # プラグインインストールには/home/jovyan以下への権限が必要

# vimキーバインドのプラグインインストール
RUN jupyter labextension install jupyterlab_vim

# 黒背景設定を追加
RUN mkdir -p /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/apputils-extension
RUN echo '{"theme":"JupyterLab Dark"}' > \
  /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings

# 作成したユーザーへ変更
USER student
WORKDIR /home/student

RUN export PATH="/home/jovyan/.local/bin:$PATH"
RUN pip install fastai --user
