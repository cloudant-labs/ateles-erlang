# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.

defmodule Ateles.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ateles_test,
      version: "0.1.0",
      elixir: "~> 1.7",
      language: :erlang,
      lockfile: Path.expand("mix.lock", __DIR__),
      build_path: Path.expand("_build", __DIR__),
      consolidate_protocols: true,
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      applications: [
        :grpcbox,
        :ctx
      ]
    ]
  end

  # Specifies which paths to compile per environment.
  #  defp elixirc_paths(_), do: ["test/"]
  #  defp elixirc_paths(_), do: ["test/elixir/lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps() do
    [
      {:grpcbox, "~> 0.11.0"},
      {:ctx, "~> 0.5.0"},
      {:jiffy, "~> 1.0"}
    ]
  end

  #  def get_test_paths() do
  #    IO.inspect Path.wildcard("test/**/*")
  #    Path.wildcard("test/*/**") |> Enum.filter(&File.dir?/1)
  #  end
end
