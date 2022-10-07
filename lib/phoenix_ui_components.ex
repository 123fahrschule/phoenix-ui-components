defmodule PhoenixUiComponents do
  def component() do
    quote do
      use Phoenix.Component
      import PhoenixUiComponents.Helpers
      alias PhoenixUiComponents.Icons.MaterialIcons
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

  defmacro __using__(_) do
    quote do
      alias PhoenixUiComponents.Icons.MaterialIcons

      import PhoenixUiComponents.{
        Avatar,
        Backdrop,
        Banner,
        Button,
        Card,
        Checkbox,
        Form,
        Layout,
        Link,
        SideNav,
        Spinner,
        Typography
      }
    end
  end
end
