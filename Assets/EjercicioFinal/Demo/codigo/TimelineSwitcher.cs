using UnityEngine;
using UnityEngine.Playables;

public class TimelineSwitcherUI : MonoBehaviour
{
    public PlayableDirector directorHumo;
    public PlayableDirector directorAgua;

    void Start()
    {
        directorHumo.Stop();
        directorAgua.Stop();
    }

    public void PlayHumo()
    {
        directorAgua.Stop();
        directorHumo.Play();
    }

    public void PlayAgua()
    {
        directorHumo.Stop();
        directorAgua.Play();
    }
}