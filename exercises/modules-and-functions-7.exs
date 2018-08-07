defmodule Library do
  def convert_float_to_string(num) do
    :erlang.float_to_binary(num, decimals: 2)
  end

  def get_env_variable(name) do
    System.get_env(name)
  end

  def get_extension(filepath) do
    Path.extname(filepath)
  end

  def get_working_directory() do
    System.cwd
  end

  def execute(cmd, args) do
    System.cmd(cmd, args)
  end
end
