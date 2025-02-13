defmodule PhoenixUiComponents do
  def component() do
    quote do
      use Phoenix.Component, global_prefixes: ~w(x-)

      import PhoenixUiComponents.Helpers
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

  defmacro __using__(_) do
    quote do
      import PhoenixUiComponents.{
        Avatar,
        Backdrop,
        Badge,
        Banner,
        Breadcrumbs,
        Button,
        Card,
        Checkbox,
        CustomLink,
        DataTable,
        DetailsList,
        DropdownItem,
        Flyout,
        Form,
        Icon,
        Layout,
        Page,
        Pagination,
        Progress,
        RadioButton,
        Sidebar,
        SideNav,
        Spinner,
        Stepper,
        Switch,
        Table,
        Tabs,
        Timer,
        TopNav,
        Topbar,
        Typography
      }
    end
  end
end
