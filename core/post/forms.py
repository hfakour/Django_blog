from .models import Comment,Post
from django import forms


class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = ['title', 'content', 'category', 'image', 'status']

class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['content']  # Only display the content field
        widgets = {
            'content': forms.Textarea(attrs={'rows': 3, 'placeholder': 'Add a comments...'}),
        }
