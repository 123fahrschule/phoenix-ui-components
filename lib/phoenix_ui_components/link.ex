defmodule PhoenixUiComponents.CustomLink do
  use PhoenixUiComponents, :component

  # attr :href, :string, default: nil
  # attr :patch, :string, default: nil
  # attr :navigate, :string, default: nil
  # attr :label, :string, default: nil
  def custom_link(assigns) do
    assigns =
      assigns
      |> assign_new(:label, fn -> nil end)
      |> assign_rest([:label])

    ~H"""
    <.link_component {@rest}>
      <%= if @label, do: @label, else: render_slot(@inner_block) %>
    </.link_component>
    """
  end

  defp link_component(%{href: _} = assigns) do

    ~H"""
    <.link  {assigns_to_attributes(assigns)}>
      <%= render_slot(@inner_block) %>
    </.link>
    """
  end

  defp link_component(%{patch: _} = assigns) do


    ~H"""
    <.link {assigns_to_attributes(assigns)}>
      <%= render_slot(@inner_block) %>
    </.link>
    """
  end

  defp link_component(%{navigate: _} = assigns) do


    ~H"""
    <.link {assigns_to_attributes(assigns)}>
      <%= render_slot(@inner_block) %>
    </.link>
    """
  end

  defp link_component(assigns) do


    ~H"""
    <button {assigns_to_attributes(assigns)}>
      <%= render_slot(@inner_block) %>
    </button>
    """
  end
end